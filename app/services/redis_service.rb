class RedisService
  class << self
    def set(key, value)
      return false if redis_disconnected? || value.blank?
      $redis.set(key, Marshal.dump(value))
      $redis.expire(key, 30.minutes.to_i)
    end

    def get(key)
      return false if redis_disconnected?
      key = $redis.get(key) && Marshal.load(key)
    end

    def add_to_list(list, value)
      return false if redis_disconnected? || value.blank?
      $redis.rpush(list, value.to_json)
    end

    def get_list(list)
      return false if redis_disconnected?
      list = $redis.lrange(list, 0, -1)
      list && JSON.parse(list)
    end

    def add_to_set(set, value)
      return false if redis_disconnected? || value.blank?
      $redis.zadd(set, Time.now.to_f, value.to_json)
    end

    def get_set(set)
      return false if redis_disconnected?
      list = $redis.zrange(set, 0, -1)
      list&.map {|d| JSON.parse(d)}
    end

    def delete(data)
      return false if redis_disconnected?
      $redis.del(data)
    end

    private

    def redis_disconnected?
      return false if $redis.ping
    rescue Redis::CannotConnectError
      true
    end
  end
end