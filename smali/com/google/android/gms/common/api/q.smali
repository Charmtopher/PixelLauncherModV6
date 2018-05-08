.class public final Lcom/google/android/gms/common/api/q;
.super Ljava/lang/Object;


# static fields
.field public static final ID:Lcom/google/android/gms/common/api/q;


# instance fields
.field public final IF:Lcom/google/android/gms/internal/cj;

.field public final IG:Landroid/os/Looper;

.field public final account:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/E;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/E;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/E;->fC()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/q;->ID:Lcom/google/android/gms/common/api/q;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/cj;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/q;->IF:Lcom/google/android/gms/internal/cj;

    iput-object p2, p0, Lcom/google/android/gms/common/api/q;->account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/common/api/q;->IG:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cj;Landroid/accounts/Account;Landroid/os/Looper;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/q;-><init>(Lcom/google/android/gms/internal/cj;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
