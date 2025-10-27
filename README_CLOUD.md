# Cloud OSINT（Render + Supabase）

## 步驟總覽
1) 建 Supabase 專案 → 在 SQL Editor 執行 `supabase_init.sql`
2) Fork/上傳本專案到你的 GitHub
3) 在 Render 以 Blueprint（render.yaml）部署
4) 在 Render 的 osint-n8n 服務填入 Supabase 與 Telegram 環境變數（見 `.env.example`）
5) 開啟 n8n → Import `n8n_workflow_cloud.json` → 啟用
6) 把 workflow 中 `Fetch rss_sources.csv` 節點的 URL 換成你自己 repo 的 raw 連結

## 備註
- Render 免費層可能休眠，有流量時會自動喚醒；如需 24h 不休眠，升級最低付費方案或改用 Oracle Cloud Free VM。
- Metabase 可用 Metabase Cloud（免費 5 人）直接連 Supabase，或自行另起容器。