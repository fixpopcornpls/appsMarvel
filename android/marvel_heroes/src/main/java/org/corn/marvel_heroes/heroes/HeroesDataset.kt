package org.corn.marvel_heroes.heroes

import androidx.core.graphics.toColorInt
import org.corn.marvel_heroes.R
import org.corn.marvel_heroes.heroes.model.Hero

class HeroesDataset {

    fun getHeroes(): List<Hero> = listOf(
        Hero(1, "Venom", R.drawable.venom, "#000000".toColorInt()),
        Hero(2, "Carnage", R.drawable.carnage, "#8B0000".toColorInt()),
        Hero(3, "Spider man", R.drawable.spider_man, "#800000".toColorInt()),
        Hero(4, "Doctor doom", R.drawable.doctor_dooms, "#006400".toColorInt()),
        Hero(5, "Iron man", R.drawable.iron_man, "#B22222".toColorInt())
    )

}