<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'autosdelujo');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'juandata');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', 'mimosin8');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '__aiP!;=%LLh3Lo$n ?@$#hp@l8B4Yii5cP.>/~pb01xINvrw3Tsj3}laa(U2^}y');
define('SECURE_AUTH_KEY', '.W6)vZSf^Aju(<Q<#=Akx{AFGKCg [ue7[>Wz`tllgG2vd?[v!E?&Hy _NsG? ]E');
define('LOGGED_IN_KEY', 'Fw<|(IGq`3`b&yn%!`-LW&#5^p12U+4nA %Lv5kA$sZu2<j6rn}JQHh1I/57&u+r');
define('NONCE_KEY', 'Gi|%BSjPYL4M+z/:<CT~J9s^:j`0k@!76uALd]yeA9d{8ZsK+i>[[6$ BMrVpQF3');
define('AUTH_SALT', 'Mj[.32v<h1L-D,)A7swrGW3%~l!oJ76vc:0DV:m*,vP9Pw1yk}I;2$(E,C{C-scg');
define('SECURE_AUTH_SALT', '(sA1*P-,Yatt)P{=Z.pQm}pC?mYu}M>erMF4WGVW={K@oOptV1n>|Rh>t+QE1d8o');
define('LOGGED_IN_SALT', '4q-AuCV&GQHMHVr%y0(Cd0 V~QmjTr^znp}+9@jTj^cGv6=[VP8txW(Gj;YM([4w');
define('NONCE_SALT', 'Q$,dy$t@;=R&^Os?j|!W63hS&VMnF)-4DAH2o>~}&apf[;nT6JvDx,RUgYuTe`6k');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'bd_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

