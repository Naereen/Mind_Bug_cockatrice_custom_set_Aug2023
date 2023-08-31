# Makefile for Mind_Bug_cockatrice_custom_set_Aug2023.git
# https://github.com/Naereen/Mind_Bug_cockatrice_custom_set_Aug2023
CP = ~/bin/CP

upload: send_public send_zamok

send_zamok:
	-$(CP) --exclude=.git . besson@zamok.crans.org:~/www/publis/Mind_Bug_cockatrice_custom_set_Aug2023.git/

send_public:
	-$(CP) --exclude=.git . ~/Public/Mind_Bug_cockatrice_custom_set_Aug2023.git/

xmllint:
	xmllint --schema ./cards.xsd /home/lilian/.local/share/Cockatrice/Cockatrice/customsets/01.MindBug.xml

