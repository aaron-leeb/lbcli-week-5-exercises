# Create a CLTV script with a timestamp of 1495584032 and public key below:
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

timestamp=1495584032
# conversion to little endian hex
hex_timestamp=0x20CD2459
# add "0x" prefix and convert to pubkeyhash by taking RIPEMD-160(SHA-256(publicKey))
public_key_hash=0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb

btcc 0x20CD2459 OP_CHECKLOCKTIMEVERIFY OP_DROP OP_DUP OP_HASH160 0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb OP_EQUALVERIFY OP_CHECKSIG


