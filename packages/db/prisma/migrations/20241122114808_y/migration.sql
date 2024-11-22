-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT,
    "balance" INTEGER NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "game" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "ticketRate" INTEGER NOT NULL,
    "winAmount" INTEGER NOT NULL,
    "drawtime" TIMESTAMP(3) NOT NULL,
    "series" TEXT[]
);

-- CreateTable
CREATE TABLE "Bet" (
    "id" INTEGER NOT NULL,
    "userId" TEXT NOT NULL,
    "betNumbers" TEXT[],
    "amount" INTEGER NOT NULL,
    "result" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "game_id_key" ON "game"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Bet_id_key" ON "Bet"("id");
