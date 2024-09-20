import redis
import mariadb
import sys

# Connect to Redis
cache = redis.Redis(host='127.0.0.1', port=6379, db=0)

# Connect to MariaDB
try:
    db = mariadb.connect(
        host="127.0.0.1",
        user="epinga_db_user",
        password="epinga_db_password",
        database="epinga_db",
        port=3306
    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)


cursor = db.cursor()

def get_data(query):
    # Check if data is in cache
    cached_data = cache.get(query)
    if cached_data:
        return cached_data
    
    # If not in cache, fetch from database
    cursor.execute(query)
    result = cursor.fetchall()
    
    # Store result in cache and set ttl with 1 hour
    cache.set(query, result, ex=3600)
    
    return result

# Example usage
query = "SELECT * FROM logista"
data = get_data(query)
print(data)
