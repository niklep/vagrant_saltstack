nginx:
  pkg.installed:
    - name: nginx

  service.running:
    - watch:
      - file: /etc/nginx/nginx.conf
    - enable: true

index.html:
  file.managed:
    - name: /srv/www/site/index.html
    - source: salt://files/index.html.jinja
    - template: jinja
    - makedirs: true
    - show_changes: false

nginx.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://files/nginx.conf
    - show_changes: false

iptables_allow_established:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: conntrack
    - ctstate: 'RELATED,ESTABLISHED'
    - save: True

iptables_allow_ssh_http_https:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
#    - match: state
#    - connstate: NEW
    - dports:
      - 22
      - 80
      - 443
    - protocol: tcp
    - save: True

iptables_policy_drop:
  iptables.set_policy:
    - chain: INPUT
    - policy: DROP
