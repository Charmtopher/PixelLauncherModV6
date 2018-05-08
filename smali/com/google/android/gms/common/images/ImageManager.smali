.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# static fields
.field private static final JH:Ljava/lang/Object;

.field private static JI:Ljava/util/HashSet;


# instance fields
.field private final JJ:Ljava/util/concurrent/ExecutorService;

.field private final JK:Lcom/google/android/gms/common/images/b;

.field private final JL:Lcom/google/android/gms/internal/cA;

.field private final JM:Ljava/util/Map;

.field private final JN:Ljava/util/Map;

.field private final JO:Ljava/util/Map;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->JH:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->JI:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JM:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/cA;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JL:Lcom/google/android/gms/internal/cA;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JO:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JN:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JJ:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic fG()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->JH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic fH()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->JI:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->JK:Lcom/google/android/gms/common/images/b;

    return-object p0
.end method
