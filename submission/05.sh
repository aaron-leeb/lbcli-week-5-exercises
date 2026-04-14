# Create a CSV script that would lock funds until one hundred and fifty blocks had passed
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

blocks=150
# conversion to little endian hex and add "0x" prefix
hex_blocks=0x9600

public_key=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277
# add "0x" prefix and convert to pubkeyhash by taking RIPEMD-160(SHA-256(publicKey))
public_key_hash=0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb


# Execute this command to get the CLTV script
# btcc 0x9600 OP_CHECKSEQUENCEVERIFY OP_DROP OP_DUP OP_HASH160 0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb OP_EQUALVERIFY OP_CHECKSIG
csv_script="029600b27576a9141e51fcdc14be9a148bb0aaec9197eb47c83776fb88ac"

echo $csv_script
