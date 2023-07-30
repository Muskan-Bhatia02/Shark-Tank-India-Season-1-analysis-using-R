sh = data.frame(Shark_Tank_India_S1)
sh1 = select(sh,-episode_number,-startup_number, -description, -rannvijay_present, -abish_present, -peyush_present, -aman_present, -anupam_present, -ashneer_present, -ghazal_present, -namita_present, -vineeta_present)

ggplot(sh1, aes(x=deal_offered)) + geom_bar() + coord_polar(theta = "x") + ggtitle("Deal Offered Percentage")

x = summarise(sh1, ashneer=sum(ashneer_invested), anupam=sum(anupam_invested), ghazal=sum(ghazal_invested),peyush=sum(peyush_invested),aman=sum(aman_invested), vineeta=sum(vineeta_invested), namita=sum(namita_invested))
f=data.frame(funds)
ggplot(f, aes(x="", y=startups_funded, fill=Name)) + geom_bar(stat = "identity", width=1) + coord_polar("y", start=0) + ggtitle("Funds")
ggplot(f, aes(x=Name, y=startups_funded)) + geom_bar(stat = "identity") + ggtitle("Total Start-Ups Funded")


ggplot(sh1, aes(x=startup_ask_valuation)) + geom_boxplot()
ggplot(sh1, aes(x=deal_valuation)) + geom_boxplot()

ggplot(sh1, aes(x=deal_equity)) + geom_boxplot()

