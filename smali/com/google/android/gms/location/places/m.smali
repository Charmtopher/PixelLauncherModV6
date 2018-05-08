.class public Lcom/google/android/gms/location/places/m;
.super Lcom/google/android/gms/common/api/o;


# direct methods
.method public static bj(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    const/16 v0, 0x235b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23be

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    invoke-static {p0}, Lcom/google/android/gms/common/api/o;->aJ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "PLACES_API_PERSONALIZED_DATA_ACCESS_REJECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "PLACES_API_PERSONALIZED_DATA_ACCESS_APPROVED"

    goto :goto_0

    :pswitch_2
    const-string v0, "NEARBY_ALERTS_NOT_AVAILABLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "PLACE_PROXIMITY_UNKNOWN"

    goto :goto_0

    :pswitch_4
    const-string v0, "PLACES_API_INVALID_APP"

    goto :goto_0

    :pswitch_5
    const-string v0, "PLACES_API_KEY_EXPIRED"

    goto :goto_0

    :pswitch_6
    const-string v0, "PLACES_API_DEVICE_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_7
    const-string v0, "PLACES_API_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_8
    const-string v0, "PLACES_API_INVALID_ARGUMENT"

    goto :goto_0

    :pswitch_9
    const-string v0, "PLACES_API_ACCESS_NOT_CONFIGURED"

    goto :goto_0

    :pswitch_a
    const-string v0, "PLACES_API_KEY_INVALID"

    goto :goto_0

    :pswitch_b
    const-string v0, "PLACES_API_USAGE_LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_c
    const-string v0, "PLACES_API_QUOTA_FAILED"

    goto :goto_0

    :cond_0
    const-string v0, "PLACEFENCING_NOT_AVAILABLE"

    goto :goto_0

    :cond_1
    const-string v0, "PLACE_ALIAS_NOT_FOUND"

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x238d
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23f1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
