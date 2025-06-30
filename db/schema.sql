create table if not exists stock_prices(
    id serial primary key,
    symbol varchar(10) not null,
    trading_day date not null,
    open_price numeric,
    high numeric,
    low numeric,
    closing_price numeric,
    volume bigint,
    unique (symbol,trading_day)
);

create table if not exists portfolio_positions(
    id serial primary key,
    symbol varchar(10) not null,
    buy_date date not null,
    quantity integer not null,
    buy_price numeric not null,
    current_price numeric,
    sector varchar(50),
    notes text
);

create table if not exists fundamentals(
    id serial primary key,
    symbol varchar(10) not null,
    pe numeric,
    roe numeric,
    eps_growth numeric,
    de_ratio numeric,
    profit_margin numeric,
    last_updated timestamp default now(),
    unique(symbol)
);

create table if not exists fundamentals_snapshot(
    id serial primary key,
    symbol varchar(10) not null,
    snapshot_date date not null,
    pe numeric,
    roe numeric,
    eps_growth numeric,
    de_ratio numeric,
    profit_margin numeric,
    created_at timestamp default now(),
    unique(symbol,snapshot_date)
);

create table if not exists fundamentals_score(
    id serial primary key,
    symbol varchar(10) not null,
    score_date date not null,
    composite_score numeric,
    roe_z numeric,
    eps_growth_z numeric,
    de_ratio_z numeric,
    profit_margin_z numeric,
    pe_z numeric,
    created_at timestamp default now(),
    unique(symbol,score_date)
);