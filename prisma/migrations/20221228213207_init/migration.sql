/*
  Warnings:

  - You are about to drop the column `dueDate` on the `Project` table. All the data in the column will be lost.
  - Made the column `firstName` on table `User` required. This step will fail if there are existing NULL values in that column.
  - Made the column `lastName` on table `User` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX "Task_ownerId_id_idx";

-- AlterTable
ALTER TABLE "Project" DROP COLUMN "dueDate",
ADD COLUMN     "due" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "Task" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "firstName" SET NOT NULL,
ALTER COLUMN "lastName" SET NOT NULL;

-- CreateIndex
CREATE INDEX "Task_ownerId_idx" ON "Task"("ownerId");
