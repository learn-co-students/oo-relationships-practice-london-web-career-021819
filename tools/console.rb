require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

al = Actor.new("Al")
pal = Actor.new("Pal")
cal = Actor.new("Cal")
sal = Actor.new("Sal")
mal = Actor.new("Mal")
hal = Actor.new("Hal")

goku = Character.new("goku", al)
gohan = Character.new("gohan", pal)
vegeta = Character.new("Vegeta", cal)
frieza = Character.new("Frieza", sal)

homer = Character.new("Homer", al)
marge = Character.new("Marge", pal)
bart = Character.new("Bart", hal)
lisa = Character.new("Lisa", pal)

simpsons = Show.new("The Simpsons")
dragonball = Show.new("Dragonball")
dragonballz = Show.new("Dragonball z")

dragonball_m = Movie.new("Dragonball")
simpsons_m = Movie.new("The Simpsons")

db1 = ShowChar.new(dragonball, goku)

dbz1 = ShowChar.new(dragonballz, goku)
dbz2 = ShowChar.new(dragonballz, gohan)
dbz3 = ShowChar.new(dragonballz, vegeta)
dbz4 = ShowChar.new(dragonballz, frieza)

s1 = ShowChar.new(simpsons, homer)
s2 = ShowChar.new(simpsons, marge)
s3 = ShowChar.new(simpsons, bart)
s4 = ShowChar.new(simpsons, lisa)

dbm1 = MovieChar.new(dragonball_m, goku)

sm1 = MovieChar.new(simpsons_m, homer)
sm2 = MovieChar.new(simpsons, marge)
sm3 = MovieChar.new(simpsons, bart)
sm4 = MovieChar.new(simpsons, lisa)






al = Trainer.new("Al")
cal = Trainer.new("Cal")
sal = Trainer.new("Sal")

jo = Client.new("Jo", al)
po = Client.new("Po", al)
o = Client.new("O", cal)
lo = Client.new("Lo", cal)
yo = Client.new("Yo", sal)
go = Client.new("Go", sal)
fo = Client.new("Fo")

greenwich = Location.new("Greenwich")
lewisham = Location.new("Lewisham")

fo.assign_trainer(sal)

cg1 = ClientGym.new(jo, greenwich)
cg2 = ClientGym.new(jo, lewisham)
cg3 = ClientGym.new(o, greenwich)
cg4 = ClientGym.new(lo, greenwich)
cg5 = ClientGym.new(yo, greenwich)
cg6 = ClientGym.new(go, greenwich)
cg7 = ClientGym.new(fo, greenwich)
cg8 = ClientGym.new(fo, lewisham)
cg9 = ClientGym.new(go, lewisham)
cg10 = ClientGym.new(po, lewisham)

tg1 = TrainerGym.new(al, greenwich)
tg2 = TrainerGym.new(al,lewisham)
tg3 = TrainerGym.new(cal, greenwich)
tg4 = TrainerGym.new(sal,greenwich)
tg5 = TrainerGym.new(sal, lewisham)


Pry.start
