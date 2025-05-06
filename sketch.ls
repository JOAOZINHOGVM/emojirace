let xJogador = [20, 20, 20, 20];
let yJogador = [50, 150, 250, 350];
let jogador = ["🇺🇦x🇷🇺", "🇩🇪🙋", "🇯🇵💣💣", "🇺🇲🛩"];
let contagem = jogador.length;
let teclas = ["a", "s","m", "n"];

function setup() {
  createCanvas(400, 400);
}

function draw() {
  defineTela();
  mostraJogadores();
  desenhaChegada();
  defineVencedor();

  function defineTela() {
    if (focused == true) {
      background("#3B0644");
    } else {
      background("#020202");
    }
  }
  function mostraJogadores() {
    textSize(30);
    for (let i = 0; i < contagem; i++) {
      text(jogador[i], xJogador[i], yJogador[i]);
    }
  }

  function desenhaChegada() {
    fill("orange");
    rect(350, 0, 10, 400);
    fill("red");
    for (let yAtual = 0; yAtual < 400; yAtual += 20) {
      rect(350, yAtual, 10, 10);
    }
  }
  function defineVencedor() {
    textAlign(CENTER, CENTER);
    for (let i = 0; i < contagem; i++) {
      if (xJogador[i] > 350) {
        text(jogador[i] + "𝕱𝖎𝖓𝖆𝖑 𝖓ã𝖔 𝖘𝖊 𝖏𝖔𝖌𝖆, 𝖋𝖎𝖓𝖆𝖑 𝖘𝖊 𝖌𝖆𝖓𝖍𝖆! ", width / 2, height / 2);
        noLoop();
      }
    }
  }
}

function keyReleased() {
  for (let i = 0; i< contagem; i++){
  if (key == teclas[i]){
  xJogador[i] += random(20);
  }
}
}