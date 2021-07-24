function fakescan -d "Fake-scan a pdf"
    convert -density 150 $argv -colorspace gray -linear-stretch 3.5%x10% -blur 0x0.5 -attenuate 0.25 +noise Gaussian -rotate 0.5 $argv-fake.pdf
end
