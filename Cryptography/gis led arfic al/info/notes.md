### Challenge Notes

Intended solve:

- From the challenge name and ciphertext format, can deduce it is related to "la cifra del sig" or the Vigenere cipher
- The challenge prompt repeats "mirror", so we can infer this is the key
- Using this key results in the plaintext with the second half mirrored
- Reversing this second half reveals the flag: `flag{r3fl3ct3d_but_v1g3n3r3}`

----

Plaintext

```
       This cipher was first described by    Giovan Battista Bellaso and was termed le
               chiffrage indéchiffrable -    the indecipherable cipher.
 However this was misattributed to Blaise    de Vigenere in the 19th century, hence
               the name, Vigenere Cipher.    If I wanted to make this
                  challenge easy, I would    have just given you a 
	      standard cipher with the "mirror"    as the key and ask you to solve
      it. But, I wanted to make this more    difficult, so I reversed the second half
of every line to make it more challenging    to read. Since you solved it, you would
            know this already! Ah, you've    got me rambling on about ciphers.
              Here is the flag you wanted    flag{r3fl3ct3d_but_v1g3n3r3}
```

Mirrored plaintext (second half)

```
       This cipher was first described by    el demret saw dna osalleB atsittaB navoiG
               chiffrage indéchiffrable -    .rehpic elbarehpicedni eht
 However this was misattributed to Blaise    de Vigenere in the 19th century, hence
               the name, Vigenere Cipher.    siht ekam ot detnaw I fI
                  challenge easy, I would    a uoy nevig tsuj evah 
	    standard cipher with the "mirror"    evlos ot uoy ksa dna yek eht sa
      it. But, I wanted to make this more    flah dnoces eht desrever I os ,tluciffid
of every line to make it more challenging    dluow uoy ,ti devlos uoy ecniS .daer ot
            know this already! Ah, you've    .srehpic tuoba no gnilbmar em tog
              Here is the flag you wanted    }3r3n3g1v_tub_d3tc3lf3r{galf
```

Vigenere encrypt with key "mirror" to produce ciphertext

```
       Fpzj qzbpvi kre nzigk pmjtfznmu sm    vx lvdfvf arn rem wjrzcqJ rkgzfbrS brhwzX
               qyunwioxq qeuéqyunwiosxm -    .ivvguk vcprdmygwtqlez syf
 Pfnsmqz kywj iij dwjmbkiwsgbvu hf Ntrzgv    pm Mzuvzmiv we fpv 19kv tqvklfp, tmets
               ktm erav, Hqxvbvdm Tzdyqz.    jzvk qsrd ck pmkeon U nZ
                  tvrxtveuv qijp, W naccu    o lag evjzs bjlx vhiy 
	    jhrzlrir tuxyvf nuby kvv "yqiici"    qdcfg ff cfp yjm ler mvw myk gr
      ub. Slh, Z iieksu fw dryv fpzj afdm    wcoy pvftsj qpk usjdmmvf Z aa ,kcitunwzr
fr mmvfp xqev hf yibv wk ywiv qymtcvbxuvx    uzlae lfm ,ku lvmzfe cfp stzqJ .uovd wk
            bbfi byzg rxzvrrp! Mp, pfi'mq    .aivvguk klcsm vf xbzxjdrf vy bfx
              Vvdm zj hyq ncru pac nrbkql    }3i3e3u1m_fcs_u3ht3xn3i{xocr
```