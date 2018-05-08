.class Landroid/support/v4/app/al;
.super Landroid/arch/lifecycle/B;
.source "SourceFile"


# static fields
.field private static final gB:Landroid/arch/lifecycle/D;


# instance fields
.field gC:Landroid/support/v4/c/v;

.field private gD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0}, Landroid/support/v4/app/am;-><init>()V

    sput-object v0, Landroid/support/v4/app/al;->gB:Landroid/arch/lifecycle/D;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Landroid/arch/lifecycle/B;-><init>()V

    .line 294
    new-instance v0, Landroid/support/v4/c/v;

    invoke-direct {v0}, Landroid/support/v4/c/v;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/al;->gD:Z

    return-void
.end method

.method static a(Landroid/arch/lifecycle/E;)Landroid/support/v4/app/al;
    .locals 4

    .line 291
    new-instance v0, Landroid/arch/lifecycle/C;

    sget-object v1, Landroid/support/v4/app/al;->gB:Landroid/arch/lifecycle/D;

    invoke-direct {v0, p0, v1}, Landroid/arch/lifecycle/C;-><init>(Landroid/arch/lifecycle/E;Landroid/arch/lifecycle/D;)V

    const-class p0, Landroid/support/v4/app/al;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/arch/lifecycle/C;->az:Landroid/arch/lifecycle/E;

    iget-object v2, v2, Landroid/arch/lifecycle/E;->aA:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/B;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Landroid/arch/lifecycle/C;->ay:Landroid/arch/lifecycle/D;

    invoke-interface {p0}, Landroid/arch/lifecycle/D;->n()Landroid/arch/lifecycle/B;

    move-result-object v2

    iget-object p0, v0, Landroid/arch/lifecycle/C;->az:Landroid/arch/lifecycle/E;

    iget-object p0, p0, Landroid/arch/lifecycle/E;->aA:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/B;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/arch/lifecycle/B;->m()V

    :cond_0
    check-cast v2, Landroid/support/v4/app/al;

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final m()V
    .locals 6

    .line 343
    invoke-super {p0}, Landroid/arch/lifecycle/B;->m()V

    .line 344
    iget-object v0, p0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    .line 345
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 346
    iget-object v3, p0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/aj;

    .line 347
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/aj;->g(Z)Landroid/support/v4/a/b;

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    iget v2, v0, Landroid/support/v4/c/v;->mSize:I

    iget-object v3, v0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v1, v0, Landroid/support/v4/c/v;->mSize:I

    iput-boolean v1, v0, Landroid/support/v4/c/v;->jt:Z

    .line 350
    return-void
.end method
