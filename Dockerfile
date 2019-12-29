FROM wordpress:latest

ADD ./custom_plugin /usr/src/wordpress/wp-content/plugins/custom_plugin
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content/plugins/custom_plugin
RUN find /usr/src/wordpress/wp-content/plugins/custom_plugin -type f -exec chmod 644 {} +
RUN find /usr/src/wordpress/wp-content/plugins/custom_plugin -type d -exec chmod 755 {} +

ADD ./custom_theme /usr/src/wordpress/wp-content/themes/custom_theme
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content/themes/custom_theme
RUN find /usr/src/wordpress/wp-content/themes/custom_theme -type f -exec chmod 644 {} +
RUN find /usr/src/wordpress/wp-content/themes/custom_theme -type d -exec chmod 755 {} +