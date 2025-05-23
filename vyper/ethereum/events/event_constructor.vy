event Deposit:
    _from: indexed(address)
    _id: indexed(bytes32)
    _value: uint256

@deploy
def __init__():
    log Deposit(
        _from=msg.sender,
        _id=extract32(convert("abcdefghijklmnopqrstuvwxyz220322", Bytes[32]), 0),
        _value=7)

# ----
# constructor()
# ~ emit Deposit(address,bytes32,uint256): #0x1212121212121212121212121212120000000012, #0x6162636465666768696a6b6c6d6e6f707172737475767778797a323230333232, 0x07
