package com.example.utils;

import redis.clients.jedis.Jedis;

public class CacheUtils {

    public static final String PREFIX_CONNECTION_PLAYER = null;
    public static final String PREFIX_MOVES = null;

    public CacheUtils(String getenv, Integer valueOf) {
    }
    //Make work with Redis cache

    public Jedis getClient() {
        return null;
    }
}
