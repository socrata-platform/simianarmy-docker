# simianarmy-docker

Run Netflix's [Simian Army][simianarmy] in docker.

This project is based on [Socrata Shipyard][shipyard].  Please see that project for more information
on configuration.

Currently only [Chaos Monkey][chaosmonkey] is supported, but more Simians are to come!

## Configuration

`CHAOS_ENABLED` - default `true`
`CHAOS_LEASHED` - default `true`
`CHAOS_ASG_ENABLED` - default `true`
`CHAOS_ASG_PROBABILITY` - default `1.0`
`CHAOS_GLOBAL_NOTIFICATION_EMAIL` - email address to send action notifications to
`CHAOS_SOURCE_EMAIL` - email address to send action notifications from
`CHAOS_NOTIFICATIONS_ENABLED` - default `true`

`AWS_ACCESS_KEY_ID` - AWS Key ID
`AWS_SECRET_ACCESS_KEY` - AWS Secret Key
`AWS_REGION` - AWS Region
`AWS_ASSUME_ROLE` - AWS role ARN if assume role should be used

`SIMIAN_SDB_DOMAIN` - SDB Domain, default `SIMIAN_ARMY`
`SIMIAN_FREQUENCY` - Simian Army run frequency, default `1.0`
`SIMIAN_FREQUENCY_UNITS`- Simian Army run frequency units, default `HOURS`
`SIMIAN_TIMEZONE` - default `America/Los_Angeles`
`SIMIAN_MONKEYTIME` - default `false`

[simianarmy]: https://github.com/Netflix/SimianArmy
[shipyard]: https://github.com/socrata/shipyard
[chaosmonkey]: https://github.com/Netflix/SimianArmy/wiki/Chaos-Monkey
