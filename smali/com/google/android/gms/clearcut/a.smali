.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;


# static fields
.field private static Hj:Lcom/google/android/gms/common/api/k;

.field private static Hk:Lcom/google/android/gms/common/api/f;

.field public static final Hl:Lcom/google/android/gms/common/api/a;

.field private static final Hm:[Lcom/google/android/gms/phenotype/ExperimentTokens;

.field private static final Hn:[Ljava/lang/String;

.field private static final Ho:[[B


# instance fields
.field private final Hp:I

.field private Hq:Ljava/lang/String;

.field private Hr:I

.field private Hs:Ljava/lang/String;

.field private Ht:Ljava/lang/String;

.field private final Hu:Z

.field private Hv:I

.field private final Hw:Lcom/google/android/gms/clearcut/f;

.field private final Hx:Lcom/google/android/gms/common/a/a;

.field private Hy:Lcom/google/android/gms/clearcut/e;

.field private final Hz:Lcom/google/android/gms/clearcut/c;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->Hj:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/clearcut/g;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->Hk:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/a;->Hk:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/clearcut/a;->Hj:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->Hl:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    sput-object v1, Lcom/google/android/gms/clearcut/a;->Hm:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/clearcut/a;->Hn:[Ljava/lang/String;

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/gms/clearcut/a;->Ho:[[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/f;Lcom/google/android/gms/common/a/a;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/clearcut/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->Hr:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->Hv:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->s(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/clearcut/a;->Hp:I

    iput p2, p0, Lcom/google/android/gms/clearcut/a;->Hr:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/a;->Hq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/a;->Hs:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/a;->Ht:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/a;->Hu:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/a;->Hw:Lcom/google/android/gms/clearcut/f;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/a;->Hx:Lcom/google/android/gms/common/a/a;

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    new-instance p9, Lcom/google/android/gms/clearcut/e;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/e;-><init>()V

    :goto_0
    iput-object p9, p0, Lcom/google/android/gms/clearcut/a;->Hy:Lcom/google/android/gms/clearcut/e;

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->Hv:I

    iput-object p10, p0, Lcom/google/android/gms/clearcut/a;->Hz:Lcom/google/android/gms/clearcut/c;

    if-eqz p6, :cond_2

    if-nez p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string p1, "can\'t be anonymous with an upload account"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v7, Lcom/google/android/gms/clearcut/internal/a;

    invoke-direct {v7, p1}, Lcom/google/android/gms/clearcut/internal/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/a/f;->gt()Lcom/google/android/gms/common/a/a;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/clearcut/internal/g;

    invoke-direct {v10, p1}, Lcom/google/android/gms/clearcut/internal/g;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/f;Lcom/google/android/gms/common/a/a;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/clearcut/c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/clearcut/a;->Hr:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Ht:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/clearcut/a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/clearcut/a;->Hv:I

    return p0
.end method

.method public static synthetic e(Ljava/util/ArrayList;)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hx:Lcom/google/android/gms/common/a/a;

    return-object p0
.end method

.method public static synthetic fe()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/a;->Hn:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ff()[[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/a;->Ho:[[B

    return-object v0
.end method

.method public static synthetic fg()[Lcom/google/android/gms/phenotype/ExperimentTokens;
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/a;->Hm:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hy:Lcom/google/android/gms/clearcut/e;

    return-object p0
.end method

.method public static synthetic h(Lcom/google/android/gms/clearcut/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/clearcut/a;->Hu:Z

    return p0
.end method

.method public static synthetic i(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/google/android/gms/clearcut/a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/clearcut/a;->Hp:I

    return p0
.end method

.method public static synthetic k(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hz:Lcom/google/android/gms/clearcut/c;

    return-object p0
.end method

.method public static synthetic l(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/clearcut/a;->Hw:Lcom/google/android/gms/clearcut/f;

    return-object p0
.end method

.method private static s(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p0, "ClearcutLogger"

    const-string v1, "This can\'t happen."

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    return p0
.end method
