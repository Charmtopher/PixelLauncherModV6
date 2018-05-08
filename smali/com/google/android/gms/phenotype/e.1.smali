.class public Lcom/google/android/gms/phenotype/e;
.super Lcom/google/android/gms/common/api/p;


# static fields
.field private static QH:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/phenotype/e;->QH:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/phenotype/c;->Hl:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/q;->ID:Lcom/google/android/gms/common/api/q;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/q;)V

    return-void
.end method
