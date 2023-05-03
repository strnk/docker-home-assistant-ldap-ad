ARG HA_IMAGE_TAG
FROM homeassistant/home-assistant:${HA_IMAGE_TAG}
RUN apk add --no-cache openldap-clients
RUN wget -O /usr/bin/ldap-auth https://raw.githubusercontent.com/strnk/ldap-auth-sh/ad-dc-compatibility/ldap-auth.sh \
    && chmod 755 /usr/bin/ldap-auth
