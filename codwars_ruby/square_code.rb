def code(s)
  n = Math.sqrt(s.length).ceil
  s += 11.chr * ( n * n - s.length)
  lines = s.scan(/.{#{n}}/).map { |line| line.chars }.transpose
  lines = lines.map { |line| line.reverse.join() }.join("\n")
end

def decode(s)
  lines = s.split("\n").map { |line| line.reverse }
  lines = lines.map { |line| line.chars }.transpose.join().gsub(/#{11.chr}|\n/, "")
end

$data1 = "fa  h ttrheI ilS\nitifakw   s'irdo\nc cotnihftivce m\neAereocaihree,we\n.n   wedroe . i \n\vdIdT , es t Sls\n\v seoe t.eIaFola\n" +
"\vw s nIo   srm y\n\voatso  Bwhtoee \n\vulrautpuhoem nt\n\vlsuyghetold sdh\n\vdoc hir  d wa e\n\v  tt niif ohyi \n\vsgihoksfawfa nw\n" +
"\vuroaf h vi ti o\n\vfent I iotd nfr"

p decode($data1)
