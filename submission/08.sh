# Create a time-based CSV script that would lock funds for 6 months (using 30-day months)
# Time-based CSV uses 512-second units with the type flag (bit 22) set
# publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277

seconds=$((6 * 30 * 24 * 60 * 60))
nvalue=$(($seconds / 512))

hexvalue=$(printf '%x\n' $nvalue)

relativevalue=$(printf '%x\n' $((0x$hexvalue | 0x400000)))
finalvalue=$(printf "%d\n" "0x$relativevalue")
time_hex=$(./integer2lehex.sh $finalvalue)
time_hex=0xa77640

public_key=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277
# add "0x" prefix and convert to pubkeyhash by taking RIPEMD-
public_key_hash=0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb

# Execute this command to get the CSV script
# btcc 0xa77640 OP_CHECKSEQUENCEVERIFY OP_DROP OP_DUP OP_HASH160 0x1e51fcdc14be9a148bb0aaec9197eb47c83776fb OP_EQUALVERIFY OP_CHECKSIG

csv_script="03a77640b27576a9141e51fcdc14be9a148bb0aaec9197eb47c83776fb88ac"

echo $csv_script