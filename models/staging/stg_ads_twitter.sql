select
    cast(campaign_id as string) as campaign_id,
    'Twitter' as channel,
    clicks,
    impressions,
    spend,
    null as total_conversions,
    engagements
from {{ ref('src_promoted_tweets_twitter_all_data') }}