# Create a CLTV script with a timestamp of 1495584032 and public key below:
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

timestamp=1495584032
# conversion to little endian hex
hex_timestamp=0x20CD2459
# add "0x" prefix to public key
publicKey=0x02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

cltv_script=$(btcc 0x20CD2459 OP_CHECKLOCKTIMEVERIFY OP_DROP OP_DUP OP_HASH160 0x02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277 OP_EQUALVERIFY OP_CHECKSIG)

echo $cltv_script

