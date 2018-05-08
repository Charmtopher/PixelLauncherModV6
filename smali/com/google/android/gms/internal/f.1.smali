.class public final Lcom/google/android/gms/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# static fields
.field public static final Na:Lcom/google/android/gms/internal/f;


# instance fields
.field final GU:Z

.field final GW:Z

.field final GX:Ljava/lang/String;

.field final GY:Ljava/lang/String;

.field final Nb:Z

.field final Nc:Z

.field final Nd:Ljava/lang/Long;

.field final Ne:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/g;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/f;->Na:Lcom/google/android/gms/internal/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->Nb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->GU:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->GX:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->GW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->Nc:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->GY:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->Nd:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->Ne:Ljava/lang/Long;

    return-void
.end method
