package com.mpackage.network

import com.google.gson.annotations.SerializedName
import com.kakao.sdk.template.model.Content
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory




// Post Book Contents
data class Book(
    val title: String,
    val pages: List<Page>
)

data class Page(
    val content: String,
    val image_url: String
)

// user profile data class
data class UserProfile(
    val username: String,
    val email: String,
    val profileImage: String
)



object RetrofitClient {
    private const val BASE_URL = "http://143.248.225.199:3000" // 호스트 머신의 IPv4 주소

    val retrofit: Retrofit by lazy {
        Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
//            .client(
//                OkHttpClient.Builder().addInterceptor{ chain ->
//                    val request = chain.request().newBuilder()
//                        .addHeader("Content-Type", "application/json")
//                        .build()
//                    chain.proceed(request)
//                }.build()
//            )
            .build()
    }

    // OkHttpClient with Logging and Interceptor
    private val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .addInterceptor(HttpLoggingInterceptor().apply {
                // Set logging level to BODY for detailed request/response info
                level = HttpLoggingInterceptor.Level.BODY
            })
            .addInterceptor { chain ->
                // Add custom headers to all requests
                val request = chain.request().newBuilder()
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Accept", "application/json")
                    .build()
                chain.proceed(request)
            }
            .build()
    }



}