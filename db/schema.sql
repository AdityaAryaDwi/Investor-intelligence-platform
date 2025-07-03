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
    roe numeric,
    roce numeric,
    opm numeric,
    sales_growth numeric,
    profit_growth numeric,
    eps numeric,
    de_ratio numeric,
    icr numeric,
    pe numeric,
    peg numeric,
    pfcf numeric,
    updated_at timestamp default now(),
    unique(symbol)
);

create table if not exists fundamentals_snapshot(
    id serial primary key,
    symbol varchar(10) not null,
    snapshot_date date not null,
    roe numeric,
    roce numeric,
    opm numeric,
    sales_growth numeric,
    profit_growth numeric,
    eps numeric,
    de_ratio numeric,
    icr numeric,
    pe numeric,
    peg numeric,
    pfcf numeric,
    created_at timestamp default now(),
    unique(symbol,snapshot_date)
);

create table if not exists fundamentals_score(
    id serial primary key,
    symbol varchar(10) not null,
    score_date date not null,
    composite_score numeric,
    roe_z numeric,
    roce_z numeric,
    opm_z numeric,
    sales_growth_z numeric,
    profit_growth_z numeric,
    eps_z numeric,
    de_ratio_z numeric,
    icr_z numeric,
    pe_z numeric,
    peg_z numeric,
    pfcf_z numeric,
    created_at timestamp default now(),
    unique(symbol,score_date)
);