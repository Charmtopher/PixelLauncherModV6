.class public final Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;


# instance fields
.field final KC:Ljava/lang/String;

.field private final KD:Z

.field final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/j;->KC:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/j;->KD:Z

    return-void
.end method
