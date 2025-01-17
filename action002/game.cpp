//========================================================
// 
// ウインドウの生成等 (game.cpp)
// Author 橋本賢太
// 
//========================================================
#include "game.h"
#include "manager.h"
#include "fade.h"
#include "Skill_UI.h"

#define PLAYER_SPAWN_X							(1400.0f)
#define FEILD_WIDTH_NUM							(16)
#define FEILD_HEIGHT_NUM						(16)
#define WALL_WIDTH_NUM							(16)
#define WALL_HEIGHT_NUM							(2)
#define WALL_NUM								(4)
#define FEILD_WIDTH								(100.0f)
#define FEILD_HEIGHT							(100.0f)
#define WALL_WIDTH								(100.0f)
#define WALL_HEIGHT								(100.0f)

//========================================================
// 静的メンバ変数
//========================================================
CPlayer3D *CGame::m_pPlayer3D = NULL;
CEnemyManager *CGame::m_pEnemyManager = NULL;
CWallObjManager *CGame::m_pWallManager = NULL;
CBlock3D *CGame::m_pBlock3D = NULL;
CDeathBlock *CGame::m_pDeathBlock = NULL;
CThroughBlock *CGame::m_pThroughBlock = NULL;
CItemManager *CGame::m_pItemManager = NULL;
CTime *CGame::m_pTime = NULL;
CScore *CGame::m_pScore = NULL;
CSkill_UI *CGame::m_pSkillUI = NULL;
CField *CGame::m_pField[256] = {};
CWall *CGame::m_pWall[256] = {};
float CGame::m_nInitPos = 0.0f;
int CGame::m_nScore = 0;

//========================================================
// コンストラクタ
//========================================================
CGame::CGame()
{
	m_nInitPos = 0;
	m_nScore = 0;
}

//========================================================
// デストラクタ
//========================================================
CGame::~CGame()
{

}

//========================================================
// 初期化処理
//========================================================
HRESULT CGame::Init(void)
{
	CManager::GetInstance()->GetSound()->PlaySoundA(CSound::SOUND_LABEL_GAME_BGM);

	m_pTime = CTime::Create();

	m_pPlayer3D = CPlayer3D::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f));

	m_pEnemyManager = CEnemyManager::Create();

	m_pWallManager = CWallObjManager::Create();

	m_pItemManager = CItemManager::Create();

	m_pScore = CScore::Create();

	m_pSkillUI = CSkill_UI::Create();

	for (int nCntHeight = 0; nCntHeight < FEILD_HEIGHT_NUM; nCntHeight++)
	{
		for (int nCntWidth = 0; nCntWidth < FEILD_WIDTH_NUM; nCntWidth++)
		{
			m_pField[nCntWidth + nCntHeight * FEILD_WIDTH_NUM] =
				CField::Create(D3DXVECTOR3(FEILD_WIDTH * nCntWidth, 0.0f, FEILD_HEIGHT * nCntHeight), D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}
	}

	m_nInitPos = ((100.0f * WALL_WIDTH_NUM) - 50.0f);


	for (int nCntHeight = 0; nCntHeight < WALL_HEIGHT_NUM; nCntHeight++)
	{
		for (int nCntNum = 0; nCntNum < WALL_NUM; nCntNum++)
		{
			for (int nCntWidth = 0; nCntWidth < WALL_WIDTH_NUM; nCntWidth++)
			{
				switch (nCntNum)
				{
				case 0:
					m_pWall[nCntWidth + nCntNum * WALL_WIDTH_NUM + nCntHeight * WALL_NUM * WALL_WIDTH_NUM] =
						CWall::Create(D3DXVECTOR3(-50.0f, 50.0f + WALL_HEIGHT * nCntHeight, WALL_WIDTH * nCntWidth), D3DXVECTOR3(0.0f, -D3DX_PI / 2, 0.0f));
					break;


				case 1:
					m_pWall[nCntWidth + nCntNum * WALL_WIDTH_NUM + nCntHeight * WALL_NUM * WALL_WIDTH_NUM] =
						CWall::Create(D3DXVECTOR3(WALL_WIDTH * nCntWidth, 50.0f + WALL_HEIGHT * nCntHeight, m_nInitPos), D3DXVECTOR3(0.0f, 0.0f, 0.0f));
					break;


				case 2:
					m_pWall[nCntWidth + nCntNum * WALL_WIDTH_NUM + nCntHeight * WALL_NUM * WALL_WIDTH_NUM] =
						CWall::Create(D3DXVECTOR3(m_nInitPos, 50.0f + WALL_HEIGHT * nCntHeight, (m_nInitPos - 50.0f) - WALL_WIDTH * nCntWidth), D3DXVECTOR3(0.0f, D3DX_PI / 2, 0.0f));
					break;


				case 3:
					m_pWall[nCntWidth + nCntNum * WALL_WIDTH_NUM + nCntHeight * WALL_NUM * WALL_WIDTH_NUM] =
						CWall::Create(D3DXVECTOR3(-WALL_WIDTH * nCntWidth + (m_nInitPos - 50.0f), 50.0f + WALL_HEIGHT * nCntHeight, -50.0f), D3DXVECTOR3(0.0f, D3DX_PI, 0.0f));
					break;


				default:
					break;
				}
			}
		}
	}

	CManager::GetInstance()->GetCamera()->SetPosGame(m_pPlayer3D->GetPos(), m_pPlayer3D->GetPos());
	CManager::GetInstance()->GetCamera()->SetRot(D3DXVECTOR3(0.0, 0.0, 0.0));

	CManager::GetInstance()->GetMinimap_Camera()->SetPos(D3DXVECTOR3(750.0f, 2000.0f, 750.0f), D3DXVECTOR3(750.0f, 10.0f, 750.001f));
	CManager::GetInstance()->GetCamera()->SetRot(D3DXVECTOR3(0.0f, 0.0, 0.0));

	return S_OK;
}

//========================================================
// 終了処理
//========================================================
void CGame::Uninit(void)
{
	CManager::GetInstance()->GetSound()->StopSound();

	// NULLチェック
	if (m_pTime != NULL)
	{
		// 終了処理
		m_pTime->Uninit();
		m_pTime = NULL;
	}

	// NULLチェック
	if (m_pScore != NULL)
	{
		// 終了処理
		m_pScore->Uninit();
		m_pScore = NULL;
	}

	// NULLチェック
	if (m_pSkillUI != NULL)
	{
		// 終了処理
		m_pSkillUI->Uninit();
		m_pSkillUI = NULL;
	}

	// NULLチェック
	if (m_pPlayer3D != NULL)
	{
		// 終了処理
		m_pPlayer3D->Uninit();
		m_pPlayer3D = NULL;
	}

	// NULLチェック
	if (m_pEnemyManager != NULL)
	{
		// 終了処理
		m_pEnemyManager->Uninit();
		m_pEnemyManager = NULL;
	}

	// NULLチェック
	if (m_pWallManager != NULL)
	{
		// 終了処理
		m_pWallManager->Uninit();
		m_pWallManager = NULL;
	}

	// NULLチェック
	if (m_pItemManager != NULL)
	{
		// 終了処理
		m_pItemManager->Uninit();
		m_pItemManager = NULL;
	}

	for (int nCntField = 0; nCntField < FEILD_WIDTH_NUM * FEILD_HEIGHT_NUM; nCntField++)
	{
		// NULLチェック
		if (m_pField[nCntField] != NULL)
		{
			m_pField[nCntField]->Uninit();
			m_pField[nCntField] = NULL;
		}
	}

	for (int nCntWall = 0; nCntWall < WALL_WIDTH_NUM * WALL_HEIGHT_NUM * WALL_NUM; nCntWall++)
	{
		// NULLチェック
		if (m_pWall[nCntWall] != NULL)
		{
			m_pWall[nCntWall]->Uninit();
			m_pWall[nCntWall] = NULL;
		}
	}

	Release();
}

//========================================================
// 更新処理
//========================================================
void CGame::Update(void)
{
	// キーボードの取得
	CInputKeyboard *pInputKeyboard = CManager::GetInstance()->GetInputKeyboard();

	// マウスの取得
	CInputMouse *pInputMouse = CManager::GetInstance()->GetInputMouse();

#ifdef _DEBUG
	if (pInputKeyboard->GetTrigger(DIK_RETURN) == true)
	{
		if (b != true)
		{
			if (CManager::GetInstance()->GetFade()->GetState() == CFade::FADE_NONE)
			{
				CManager::GetInstance()->GetFade()->SetFade(CManager::GetInstance()->GetScene()->MODE_RESULT);
				b = true;
			}
		}
	}
#endif

	if (m_pEnemyManager->GetNum() <= 0)
	{
		if (b != true)
		{
			if (CManager::GetInstance()->GetFade()->GetState() == CFade::FADE_NONE)
			{
				CManager::GetInstance()->GetFade()->SetFade(CManager::GetInstance()->GetScene()->MODE_RESULT);
				b = true;
			}
		}
	}

	if (m_pTime->GetTime() <= 0)
	{
		if (b != true)
		{
			if (CManager::GetInstance()->GetFade()->GetState() == CFade::FADE_NONE)
			{
				CManager::GetInstance()->GetFade()->SetFade(CManager::GetInstance()->GetScene()->MODE_RESULT);
				b = true;
			}
		}
	}

	m_pEnemyManager->Update();
	m_pItemManager->Update();
	m_pWallManager->Update();
}

//========================================================
// 描画処理
//========================================================
void CGame::Draw(void)
{

}


//========================================================
// プレイヤー3Dのポインタを返す関数
//========================================================
CPlayer3D *CGame::GetPlayer3D(void)
{
	return m_pPlayer3D;
}

// //========================================================
// // エネミー3Dのポインタを返す関数
// //========================================================
// CEnemy3D *CGame::GetEnemy3D(void)
// {
// 	return m_pEnemy3D[0];
// }

//========================================================
// ブロック3Dのポインタを返す関数
//========================================================
CBlock3D *CGame::GetBlock3D(void)
{
	return m_pBlock3D;
}

//========================================================
// 即死ブロックのポインタを返す関数
//========================================================
CDeathBlock *CGame::GetDeathBlock(void)
{
	return m_pDeathBlock;
}

//========================================================
// 通り抜けれるブロックのポインタを返す関数
//========================================================
CThroughBlock *CGame::GetThroughBlock(void)
{
	return m_pThroughBlock;
}

//========================================================
// タイムのポインタを返す関数
//========================================================
CTime *CGame::GetTime(void)
{
	return m_pTime;
}

//========================================================
// スコアのポインタを返す関数
//========================================================
CScore *CGame::GetScore(void)
{
	return m_pScore;
}

//========================================================
// スコアのポインタを返す関数
//========================================================
CSkill_UI *CGame::GetSkillUI(void)
{
	return m_pSkillUI;
}


//========================================================
// 敵マネージャーのポインタを返す関数
//========================================================
CEnemyManager *CGame::GetEnemyManager(void)
{
	return m_pEnemyManager;
}

//========================================================
// 敵マネージャーのポインタを返す関数
//========================================================
CWallObjManager *CGame::GetWallManager(void)
{
	return m_pWallManager;
}

//========================================================
// アイテムマネージャーのポインタを返す関数
//========================================================
CItemManager *CGame::GetItemManager(void)
{
	return m_pItemManager;
}


//==========================================================================
// 敵取得
//==========================================================================
CField *CGame::GetField(void)
{
	return m_pField[0];
}


//==========================================================================
// 敵取得
//==========================================================================
CWall *CGame::GetWall(void)
{
	return m_pWall[0];
}


//==========================================================================
// スコア取得
//==========================================================================
float CGame::GetInitPos(void)
{
	return m_nInitPos;
}


//==========================================================================
// スコア取得
//==========================================================================
int CGame::GetGameScore(void)
{
	return m_nScore;
}


//==========================================================================
// スコア設定
//==========================================================================
void CGame::SetScore(int nScore)
{
	m_nScore = nScore;
}


//==========================================================================
// スコア加算
//==========================================================================
void CGame::AddScore()
{
	m_nScore++;
}