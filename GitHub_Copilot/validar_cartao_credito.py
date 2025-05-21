def identificar_bandeira(cartao):
    cartao = cartao.replace(" ", "")
    if cartao.isdigit():
        if cartao.startswith("4"):
            return "Visa"
        elif cartao.startswith(("51", "52", "53", "54", "55")):
            return "MasterCard"
        elif cartao.startswith("34") or cartao.startswith("37"):
            return "American Express"
        elif cartao.startswith("6011") or cartao.startswith("65"):
            return "Discover"
        elif cartao.startswith("35"):
            return "JCB"
        elif cartao.startswith(("36", "38")) or cartao.startswith(
            ("300", "301", "302", "303", "304", "305")
        ):
            return "Diners Club"
        else:
            return "Bandeira desconhecida"
    else:
        return "Número de cartão inválido"


def main():
    cartao = input("Digite o número do cartão de crédito: ")
    bandeira = identificar_bandeira(cartao)
    print(f"A bandeira do cartão é: {bandeira}")


if __name__ == "__main__":
    main()
