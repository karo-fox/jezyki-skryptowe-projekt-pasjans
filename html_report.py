import sys
from jinja2 import Template


def parse(files):
    data=[]
    for file in files:
        with open(file) as f:
            content=f.readlines()
        data.append({
            "result": content[-1],
            "counter": content[-2],
            "game": "".join(content[:-2])
        })
    return data


if __name__ == "__main__":
    try:
        files = sys.argv[1:]
    except ValueError:
        print("podano błędne dane wejściowe")

    template = Template(open("./template/index.html").read())
    data = parse(files)
    print(template.render(data=data))
