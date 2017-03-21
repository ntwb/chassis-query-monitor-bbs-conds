# Chassis Query Monitor bbPress & BuddyPress Conditionals
Extension for [Chassis](https://github.com/Chassis/Chassis) to install the [Query Monitor bbPress &amp; BuddyPress Conditionals](https://wordpress.org/plugins/query-monitor-bbpress-buddypress-conditionals/) plugin.


## Installation
### Automatic (preferred)
To install, add both `Chassis/Query-Monitor` and `ntwb/chassis-query-monitor-bbs-conds` to your extensions list inside your config file.

Example `config.local.yaml` file:
```yaml
extensions:
    - Chassis/Query-Monitor
    - ntwb/chassis-query-monitor-bbs-conds
```

### Manual
1. Clone this repo into your Chassis `extensions` directory:
    ```sh
    git clone https://github.com/ntwb/chassis-query-monitor-bbs-conds.git /path/to/chassis/extensions/query-monitor-bbs-conds
    ```
1. Run `vagrant reload --provision` or `vagrant up` from inside Chassis.
