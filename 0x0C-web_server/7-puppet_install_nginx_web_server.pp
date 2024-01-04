# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx listening on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
    server {
      listen 80 default_server;
      listen [::]:80 default_server;

      root /var/www/html;
      index index.html;

      location / {
        try_files \$uri \$uri/ =404;
        add_header X-XSS-Protection \"1; mode=block\";
        add_header X-Content-Type-Options nosniff;
        add_header X-Frame-Options SAMEORIGIN;
      }

      location = /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
      }

      error_page 404 /404.html;
      location = /404.html {
        root /usr/share/nginx/html;
      }
    }
  ",
}

# Create a simple HTML file with 'Hello World!' content
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
}

# Restart Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
