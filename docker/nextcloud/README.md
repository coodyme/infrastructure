# Nextcloud

Configurations to be made after installation

### Connect to the container and run the following commands to update the container and install `nano`:

```bash
apt update
```

```bash
apt install nano
```

### Change PHP memory limit

```bash
nano .htaccess
```

Add the following to the top of the `.htaccess` in your NextCloud container volume in `/var/www/html`:

```bash
php_value upload_max_filesize 16G
php_value post_max_size 16G
php_value max_input_time 3600
php_value max_execution_time 3600
php_value memory_limit 2048M
```

### Add trusted domains

Now we'll edit the config.php file with:

```bash
nano config/config.php
```

Scroll down until you find the 'trusted_domains' section:

```bash
'trusted_domains' => 
  array (
    0 => 'cloud.ydooc.me',
),
```

Then scroll down to the bottom of the file where you should see:

```bash
'installed' => true,
```

And add the following before the last `);`:

```bash
'overwriteprotocol' => 'https',
'default_phone_region' => 'BR',
'enable_previews' => true,
```

### Fix CallDAV

Now we'll edit the 000-default.conf file with:

```bash
nano /etc/apache2/sites-enabled/000-default.conf
```

Scroll to the end of the file and add the following after the `</VirtualHost>`:

```bash
Redirect 301 /.well-known/carddav https://ydooc.me/remote.php/dav
Redirect 301 /.well-known/caldav https://cloud.ydooc.me/remote.php/dav
Redirect 301 /.well-known/webdav https://cloud.ydooc.me/remote.php/dav
Redirect 301 /.well-known/webfinger https://cloud.ydooc.me/index.php
Redirect 301 /.well-known/nodeinfo https://cloud.ydooc.me/index.php
```

### Monitoring

If you are using Uptime Kuma to monitor your Nextcloud instance, you can use the following settings:

1. URL: `https://cloud.ydooc.me/cron.php`
2. Heartbeat: `180`
