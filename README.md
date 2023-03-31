# Twitter API v2

## Introduction

Try Twitter API v2 with Ruby on Rails.

## First

### Add Bearer Token

```bash
$ touch alpine/src/.env.development
$ echo BEARER_TOKEN=ABCDEF... > .env.development
```

## Docker

### Start app containers

```bash
$ docker-compose up -d
```

### Start the Web Server

```bash
$ docker-compose exec alpine rails s -b 0.0.0.0
```

## Testing

```bash
$ bundle exec rspec -f d spec/requests/
```

## Tweets

### Tweets lookup

| Endpoint          | Status | Request URL                       |
| :---------------- | :----- | :-------------------------------- |
| GET /2/tweets/:id | 200    | `/api/v1/tweets/lookup/:tweet_id` |

### Timelines

| Endpoint                  | Status | Request URL                                  |
| :------------------------ | :----- | :------------------------------------------- |
| GET /2/users/:id/tweets   | 200    | `/api/v1/tweets/timelines_tweets/:user_id`   |
| GET /2/users/:id/mentions | 200    | `/api/v1/tweets/timelines_mentions/:user_id` |

### Retweets

| Endpoint                       | Status | Request URL                                      |
| :----------------------------- | :----- | :----------------------------------------------- |
| GET /2/tweets/:id/retweeted_by | 200    | `/api/v1/tweets/retweets_retweeted_by/:tweet_id` |
| GET /2/tweets/:id/quote_tweets | 200    | `/api/v1/tweets/retweets_quote_tweets/:tweet_id` |

### Likes

| Endpoint                       | Status | Request URL                                   |
| :----------------------------- | :----- | :-------------------------------------------- |
| GET /2/tweets/:id/liking_users | 200    | `/api/v1/tweets/likes_liking_users/:tweet_id` |
| GET /2/tweets/:id/liked_tweets | 200    | `/api/v1/tweets/likes_liked_tweets/:user_id`  |

## Users

### Users lookup

| Endpoint                           | Status | Request URL                               |
| :--------------------------------- | :----- | :---------------------------------------- |
| GET /2/tweets/users/:id            | 200    | `/api/v1/users/lookup_id/:user_id`        |
| GET /2/users/by/username/:username | 200    | `/api/v1/users/lookup_username/:username` |

### Follows

| Endpoint                   | Status | Request URL                        |
| :------------------------- | :----- | :--------------------------------- |
| GET /2/users/:id/following | 200    | `/api/v1/users/following/:user_id` |
| GET /2/users/:id/followers | 200    | `/api/v1/users/followers/:user_id` |
