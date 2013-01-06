maxid = ""
maxgc = -1
fname = raw_input()
with open(fname) as f:
  lines = f.readlines()
  i = 0
  while i < len(lines):
    iid = lines[i].strip('\n')
    i += 1
    if iid[0] != ">":
      print "breaking on iid", iid
      break
    print "got line id", iid
    target = ""
    while i < len(lines) and lines[i][0] != '>':
      target += lines[i].strip('\n')
      i += 1
    print "computing gc content of", target
    gc = (target.count('G') + target.count('C')) / float(len(target))
    print "---"
    print gc, maxgc
    print "---"
    if gc > maxgc:
      maxgc = gc
      maxid = iid[1:]

print ("%s\n%0.6f" %(maxid, 100 *maxgc)) + '%\n'
