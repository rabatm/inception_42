<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'mrabatdb' );

/** Database password */
define( 'DB_PASSWORD', 'unPassWordSuperSecure42' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'hq@fT0aEPL@YG2.2s%_=&?RHfZgmx.r*kMk~U]D(h+OmnYa|jQ]=.A%R86@lB5(X' );
define( 'SECURE_AUTH_KEY',   'fC0cWUXZ/*vKgrT`{%tx2.gC=? WR89|$,5@0#wE:#t DUa]D:Pb_ek4Q+f4yPPb' );
define( 'LOGGED_IN_KEY',     'q~n;czcmJS9MX)tCpF)P*wL-P3=ii_d7Yy>qjZrKu0:10%ysPuBk&cp?JzYfA~#U' );
define( 'NONCE_KEY',         'u*`9`+NK{f/x4!+32Z?5@&2Q?,z{si>}8F~*`>8iQXbAZOEEsl)Cl.A>(*WvHxa,' );
define( 'AUTH_SALT',         'kw(Ht-6,`Dd1C]jog)i`ot*Ssv9$=NH*5GqeCK_maPrT &c9<4O4Ev7[^`a(JR>p' );
define( 'SECURE_AUTH_SALT',  '!rgG(Yhnw}H*8/BBASDpu%zRi@24>wHVX.l.^4^h4D9p!6Ov/3%uPD+7Pd!PTb;y' );
define( 'LOGGED_IN_SALT',    '@PN2`4)(w 3TV/X2,~zGK]Aq))Lc+?TWFuT,ku^Jj*,SiL+d+ldF-$?HPpzL7^T4' );
define( 'NONCE_SALT',        'u}~7ea;d|DkS|G2,ydOU)UTA)v^ RzL~L[zJ}(s@NoYO@prIU@2Lu&D<{eOx:Ymh' );
define( 'WP_CACHE_KEY_SALT', '/N.>]tZbd:l^w>FKwTp75s:1bx:u37QN+=L(0Y4*ElD?uj+P2gk-armEI%aAOibf' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
