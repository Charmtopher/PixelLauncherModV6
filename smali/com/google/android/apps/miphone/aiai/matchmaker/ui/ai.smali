.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    if-eqz p0, :cond_0

    .line 12
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
