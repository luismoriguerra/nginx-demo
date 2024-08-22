FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Disable IPv6
RUN echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf && \
    echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf && \
    echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]