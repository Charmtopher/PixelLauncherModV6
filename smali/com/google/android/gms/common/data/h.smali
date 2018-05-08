.class final Lcom/google/android/gms/common/data/h;
.super Lcom/google/android/gms/common/data/c;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/data/c;-><init>([Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/c;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot add data to empty builder"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot add data to empty builder"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
