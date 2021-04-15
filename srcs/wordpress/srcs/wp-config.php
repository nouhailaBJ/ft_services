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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'nouhaila' );

/** MySQL database password */
define( 'DB_PASSWORD', 'nouhaila' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^)YG54p]{:[AX0Y$6psl!pc?YAyqSxwZY_eml~YX2uH9s3C7SaHu)AYbn+*bq@%l' );
define( 'SECURE_AUTH_KEY',  'F5 B,C>D:pGi tVWKxrr#Pe~k /.CnG<H$IAtWa0)iIM~)f&=*)3?;&nY{uB30Xi' );
define( 'LOGGED_IN_KEY',    'IDoP_%hJ{lLS6*z#g(~Xa[xIT1CXYDn5ovNzZ>7f:q--CEZmoVe%.$[M~j/pgv~*' );
define( 'NONCE_KEY',        'R_qi3p;Hq(|-u$v_2=N@+4}qfDokdSGoKd@59Q0iE52=LN!]eT^z%ywdt4bGUOg9' );
define( 'AUTH_SALT',        'W,V 8*w{-`gWHCFb=./im4rV~*Fm=9s97D;i4O@T[<:7>*(pCRR#ee(0Gr0-O~_g' );
define( 'SECURE_AUTH_SALT', '.M]348^q%#3#evn$RmG$`z_9uZE55bh&+MA3uD1]{S/.X~Y7R8r/ 3^]bzet%m;)' );
define( 'LOGGED_IN_SALT',   'e&5:jR<*J)=]*Kq8h/2,^R7`tja^MRT5<o3{8s>ct0n!12_]n*`:7)@vJ>Cf6[PD' );
define( 'NONCE_SALT',       '(uXL0XaKCg+nv7aYV=!Qd;oa!kB[ihq-? (pn1V R;rO`hw-a-E8myw4,oNLu]sv' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
