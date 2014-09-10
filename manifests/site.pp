#Manage all config for servers

include nginx

user { 'art':
ensure =>present,
comment =>'Art Vandelay',
home =>'/home/art',
managehome =>true,
}
