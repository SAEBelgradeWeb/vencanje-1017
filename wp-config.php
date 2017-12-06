<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'vencanje_1017');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '$Ohn@*h,Mk;]kms`:Gb7q+`24)PBX|^9i/H.}u@7v@yWdm6{`3PWWk{mAM[GV;EU');
define('SECURE_AUTH_KEY',  '-h+M;M<`W5Boe2lv:%uD)6>6xb0b<=GwLwtM8r_rp^.Jp[B:67$%v.>Eiv<`fx{x');
define('LOGGED_IN_KEY',    ' CXxw~4J%4ieKAu->#;e*KIa?&]U7{^r7)BH(P4}oxDEO*`u_o9beFfxcGL0rV>D');
define('NONCE_KEY',        'o0=n6i,o0ZTFErQ8S8pbhEE3Tc&fsRJsyE@NK2f6YbH9GaxRi`j^:mLF~XLKy&k?');
define('AUTH_SALT',        '/htZ^Jph:XH_9_l>A)Pq#!WsB%Sx)dZ%{Ct(a0lpapzgCRGj&UnT@~t$AbQxX{cx');
define('SECURE_AUTH_SALT', '[zD%rVjcX@o!@SygNH To0R,Vl}Ai9zZc 5+2L#;Gy^Ka$8KJm{pPd-fPxewxB8!');
define('LOGGED_IN_SALT',   '/wOcFU#&q/&Pws}-{ohe$^b 3u#3`]3h.aaC@ohNM3yC~:]60|}.AkZ9!BH&`Fta');
define('NONCE_SALT',       'JK<?_ZV+]wx/J+%dMfm4}x,C3jo-)E]HU7h A;8ZB0pVs/$829ne7J.VCI/dzeCg');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
