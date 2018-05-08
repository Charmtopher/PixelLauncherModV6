.class public final Lcom/google/android/gms/internal/a;
.super Ljava/lang/Object;


# static fields
.field private static GM:Lcom/google/android/gms/common/api/Scope;

.field private static GN:Lcom/google/android/gms/common/api/Scope;

.field private static Hj:Lcom/google/android/gms/common/api/k;

.field public static final Hk:Lcom/google/android/gms/common/api/f;

.field public static final Hl:Lcom/google/android/gms/common/api/a;

.field private static MW:Lcom/google/android/gms/common/api/k;

.field private static MX:Lcom/google/android/gms/common/api/f;

.field private static MY:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->Hj:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->MW:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->Hk:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->MX:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->GM:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->GN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.API"

    sget-object v2, Lcom/google/android/gms/internal/a;->Hk:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/internal/a;->Hj:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->Hl:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/internal/a;->MX:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/internal/a;->MW:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->MY:Lcom/google/android/gms/common/api/a;

    return-void
.end method
