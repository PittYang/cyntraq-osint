create extension if not exists "uuid-ossp";
create extension if not exists "pgcrypto";

create table if not exists public.items (
  id uuid primary key default gen_random_uuid(),
  title text,
  url text unique,
  source text,
  language text,
  published_at timestamptz,
  content text,
  translated_en text,
  category text,
  keywords text[],
  risk_level int,
  created_at timestamptz default now()
);

create index if not exists idx_items_published_at on public.items(published_at);
create index if not exists idx_items_source on public.items(source);
create index if not exists idx_items_category on public.items(category);
create index if not exists idx_items_risk on public.items(risk_level);