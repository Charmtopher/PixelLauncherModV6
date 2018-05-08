.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method static c(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/CanceledException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
