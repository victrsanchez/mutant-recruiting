import { IsArray, IsNotEmpty, Matches } from 'class-validator';

export class HumanDto {
  @IsNotEmpty()
  @IsArray()
  @Matches(/^[ATCG]{1,}$/, {
    message: 'Its just must containt the following characters A,T,C,G',
    each: true,
  })
  dna: string[];
}
