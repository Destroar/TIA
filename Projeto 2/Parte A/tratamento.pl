arco(estado_inicial, paracetamol).
arco(estado_inicial, brufen).
arco(estado_inicial, aspirina).
arco(estado_inicial, anti_histaminico).
arco(estado_inicial, descanso).
arco(paracetamol, descanso).
arco(paracetamol, fisioterapia).
arco(paracetamol, cine_terapia).
arco(paracetamol, antibiotico).
arco(paracetamol, oculos).
arco(paracetamol, lentes_contacto).
arco(brufen, descanso).
arco(brufen, desporto).
arco(brufen, fisioterapia).
arco(brufen, ginastica).
arco(brufen, oculos).
arco(brufen, lentes_contacto).
arco(aspirina, inalacoes).
arco(aspirina, insulina).
arco(aspirina, antibiotico).
arco(aspirina, dieta).
arco(aspirina, soro).
arco(aspirina, oculos).
arco(aspirina, lentes_contacto).
arco(anti_histaminico, antibiotico).
arco(anti_histaminico, internamento).
arco(descanso, cine_terapia).
arco(descanso, oculos).
arco(descanso, lentes_contacto).
arco(descanso, ambulatorio).
arco(fisioterapia, cirurgia).
arco(fisioterapia, ginastica).
arco(fisioterapia, calmante).
arco(fisioterapia, injecoes).
arco(fisioterapia, ambulatorio).
arco(cine_terapia, calmante).
arco(cine_terapia, estado_final).
arco(desporto, dieta).
arco(desporto, calmante).
arco(cirurgia, internamento).
arco(cirurgia, soro).
arco(inalacoes, soro).
arco(insulina, dialise).
arco(insulina, injecoes).
arco(antibiotico, internamento).
arco(antibiotico, estado_final).
arco(dieta, estado_final).
arco(ginastica, ambulatorio).
arco(internamento, estado_final).
arco(dialise, estado_final).
arco(calmante, ambulatorio).
arco(injecoes, inalo_terapia).
arco(injecoes, ambulatorio).
arco(inalo_terapia, estado_final).
arco(soro, ambulatorio).
arco(oculos, estado_final).
arco(lentes_contacto, estado_final).
arco(ambulatorio, estado_final).


custo(estado_inicial, paracetamol, 5).
custo(estado_inicial, brufen, 4).
custo(estado_inicial, aspirina, 2).
custo(estado_inicial, anti_histaminico, 8).
custo(estado_inicial, descanso, 100).
custo(paracetamol, descanso, 100).
custo(paracetamol, fisioterapia, 150).
custo(paracetamol, cine_terapia, 200).
custo(paracetamol, antibiotico, 25).
custo(paracetamol, oculos, 500).
custo(paracetamol, lentes_contacto, 300).
custo(brufen, descanso, 100).
custo(brufen, desporto, 0).
custo(brufen, fisioterapia, 150).
custo(brufen, ginastica, 90).
custo(brufen, oculos, 500).
custo(brufen, lentes_contacto, 300).
custo(aspirina, inalacoes, 50).
custo(aspirina, insulina, 34).
custo(aspirina, antibiotico, 25).
custo(aspirina, dieta, 0).
custo(aspirina, soro, 15).
custo(aspirina, oculos, 500).
custo(aspirina, lentes_contacto, 300).
custo(anti_histaminico, antibiotico, 25).
custo(anti_histaminico, internamento, 250).
custo(descanso, cine_terapia, 200).
custo(descanso, oculos, 500).
custo(descanso, lentes_contacto, 300).
custo(descanso, ambulatorio, 800).
custo(fisioterapia, cirurgia, 1200).
custo(fisioterapia, ginastica, 90).
custo(fisioterapia, calmante, 80).
custo(fisioterapia, injecoes, 75).
custo(fisioterapia, ambulatorio, 800).
custo(cine_terapia, calmante, 80).
custo(cine_terapia, estado_final, 0).
custo(desporto, dieta, 0).
custo(desporto, calmante, 80).
custo(cirurgia, internamento, 250).
custo(cirurgia, soro, 15).
custo(inalacoes, soro, 15).
custo(insulina, dialise, 100).
custo(insulina, injecoes, 75).
custo(antibiotico, internamento, 250).
custo(antibiotico, estado_final, 0).
custo(dieta, estado_final, 0).
custo(ginastica, ambulatorio, 800).
custo(internamento, estado_final, 0).
custo(dialise, estado_final, 0).
custo(calmante, ambulatorio, 800).
custo(injecoes, inalo_terapia, 90).
custo(injecoes, ambulatorio, 800).
custo(inalo_terapia, estado_final, 0).
custo(soro, ambulatorio, 800).
custo(oculos, estado_final, 0).
custo(lentes_contacto, estado_final, 0).
custo(ambulatorio, estado_final, 0).



tempo(estado_inicial, paracetamol, 2).
tempo(estado_inicial, brufen, 3).
tempo(estado_inicial, aspirina, 4).
tempo(estado_inicial, anti_histaminico, 5).
tempo(estado_inicial, descanso, 2).
tempo(paracetamol, descanso, 2).
tempo(paracetamol, fisioterapia, 6).
tempo(paracetamol, cine_terapia, 8).
tempo(paracetamol, antibiotico, 8).
tempo(paracetamol, oculos, 1000).
tempo(paracetamol, lentes_contacto, 200).
tempo(brufen, descanso, 2).
tempo(brufen, desporto, 12).
tempo(brufen, fisioterapia, 6).
tempo(brufen, ginastica, 15).
tempo(brufen, oculos, 1000).
tempo(brufen, lentes_contacto, 200).
tempo(aspirina, inalacoes, 10).
tempo(aspirina, insulina, 30).
tempo(aspirina, antibiotico, 8).
tempo(aspirina, dieta, 30).
tempo(aspirina, soro, 8).
tempo(aspirina, oculos, 1000).
tempo(aspirina, lentes_contacto, 200).
tempo(anti_histaminico, antibiotico, 8).
tempo(anti_histaminico, internamento, 3).
tempo(descanso, cine_terapia, 8).
tempo(descanso, oculos, 1000).
tempo(descanso, lentes_contacto, 200).
tempo(descanso, ambulatorio, 20).
tempo(fisioterapia, cirurgia, 3).
tempo(fisioterapia, ginastica, 15).
tempo(fisioterapia, calmante, 90).
tempo(fisioterapia, injecoes, 3).
tempo(fisioterapia, ambulatorio, 20).
tempo(cine_terapia, calmante, 90).
tempo(cine_terapia, estado_final, 0).
tempo(desporto, dieta, 30).
tempo(desporto, calmante, 90).
tempo(cirurgia, internamento, 3).
tempo(cirurgia, soro, 8).
tempo(inalacoes, soro, 8).
tempo(insulina, dialise, 10).
tempo(insulina, injecoes, 3).
tempo(antibiotico, internamento, 3).
tempo(antibiotico, estado_final, 0).
tempo(dieta, estado_final, 0).
tempo(ginastica, ambulatorio, 20).
tempo(internamento, estado_final, 0).
tempo(dialise, estado_final, 0).
tempo(calmante, ambulatorio, 20).
tempo(injecoes, inalo_terapia, 6).
tempo(injecoes, ambulatorio, 20).
tempo(inalo_terapia, estado_final, 0).
tempo(soro, ambulatorio, 20).
tempo(oculos, estado_final, 0).
tempo(lentes_contacto, estado_final, 0).
tempo(ambulatorio, estado_final, 0).









