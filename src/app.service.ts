import {
  ForbiddenException,
  Injectable,
  InternalServerErrorException,
} from '@nestjs/common';
import { Connection, Repository } from 'typeorm';
import { HumanDto } from './dto/human.dto';
import { StatsDto } from './dto/stats.dto';
import { Dna } from './entities/dna.entity';

@Injectable()
export class AppService {
  private secuenceLenght = 4;
  private readonly dnaRepository: Repository<Dna>;

  constructor(connection: Connection) {
    this.dnaRepository = connection.getRepository(Dna);
  }

  async storeDNA(humanDto: HumanDto): Promise<string> {
    try {
      const dna = humanDto.dna;
      const matrizSize = dna.length;
      const IsNXNMatrix = dna.filter((x) => x.length !== matrizSize);

      if (IsNXNMatrix.length)
        throw new InternalServerErrorException(
          'The given DNA is not a (NXN) matrix',
        );

      const matrix = dna.map((item) => {
        return Array.from(item);
      });

      const isMutant = this.isMutant(matrix);

      this.dnaRepository.save({ dna: matrix.toString(), isMutant });

      if (!isMutant) throw new ForbiddenException('This is not mutant');

      return 'OK';
    } catch (error) {
      throw new ForbiddenException(error.message);
    }
  }

  async stats(): Promise<StatsDto> {
    try {
      const count_human_dna = await this.dnaRepository.count();
      const count_mutant_dna = await this.dnaRepository.count({
        where: { isMutant: true },
      });

      const ratio = count_mutant_dna / count_human_dna;

      return {
        count_human_dna,
        count_mutant_dna,
        ratio: +(Math.round(ratio * 100) / 100).toFixed(2),
      };
    } catch (error) {
      throw new Error(error.message);
    }
  }

  isMutant(matrix) {
    let totalSecuences = 0;

    matrix.forEach((item, indexY) => {
      item.forEach((character, indexX) => {
        totalSecuences += this.horizontalSearching(
          character,
          matrix,
          indexX + 1,
          indexY,
        );

        totalSecuences += this.verticalSearching(
          character,
          matrix,
          indexX,
          indexY + 1,
        );

        totalSecuences += this.diagonalSearching(
          character,
          matrix,
          indexX + 1,
          indexY + 1,
        );

        totalSecuences += this.reverseDiagonalSearching(
          character,
          matrix,
          indexX - 1,
          indexY + 1,
        );
      });
    });

    return totalSecuences > 1 ? true : false;
  }

  horizontalSearching(
    character: string,
    matrix: string[][],
    indexX: number,
    indexY: number,
  ) {
    let continuingInspect = true;
    let secuence = character;

    for (let x = indexX; x < matrix.length && continuingInspect; x++) {
      if (character === matrix[indexY][x]) {
        secuence += character;
      } else {
        continuingInspect = false;
      }
    }

    return secuence.length === this.secuenceLenght ? 1 : 0;
  }

  verticalSearching(
    character: string,
    matrix: string[][],
    indexX: number,
    indexY: number,
  ) {
    let continuingInspect = true;
    let secuence = character;

    for (let y = indexY; y < matrix.length && continuingInspect; y++) {
      if (character === matrix[y][indexX]) {
        secuence += character;
      } else {
        continuingInspect = false;
      }
    }

    return secuence.length === this.secuenceLenght ? 1 : 0;
  }

  diagonalSearching(
    character: string,
    matrix: string[][],
    indexX: number,
    indexY: number,
  ) {
    let continuingInspect = true;
    let secuence = character;
    let y = indexY;

    for (let i = indexX; i < matrix.length && continuingInspect; i++) {
      if (
        typeof matrix[y] !== 'undefined' &&
        typeof matrix[y][i] !== 'undefined' &&
        character === matrix[y][i]
      ) {
        secuence += character;
      } else {
        continuingInspect = false;
      }
      y++;
    }

    return secuence.length === this.secuenceLenght ? 1 : 0;
  }

  reverseDiagonalSearching(
    character: string,
    matrix: string[][],
    indexX: number,
    indexY: number,
  ) {
    let continuingInspect = true;
    let secuence = character;
    let y = indexY;

    for (let i = indexX; i >= 0 && continuingInspect; i--) {
      if (
        typeof matrix[y] !== 'undefined' &&
        typeof matrix[y][i] !== 'undefined' &&
        character === matrix[y][i]
      ) {
        secuence += character;
      } else {
        continuingInspect = false;
      }
      y++;
    }

    return secuence.length === this.secuenceLenght ? 1 : 0;
  }
}
