import sys
from pathlib import Path
sys.path.append(str(Path(__file__).resolve().parent.parent))
from db.db_connect import get_connection

with get_connection() as conn:
    with conn.cursor() as cur:
        with open("db/schema.sql","r") as f:
            cur.execute(f.read())
    conn.commit()

print("Database tables created successfully.")