.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/F;
.implements Landroid/arch/lifecycle/k;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final cY:Landroid/support/v4/c/u;

.field static final cZ:Ljava/lang/Object;


# instance fields
.field az:Landroid/arch/lifecycle/E;

.field cx:I

.field dA:Z

.field dB:Z

.field dC:Z

.field dD:Landroid/view/ViewGroup;

.field dE:Landroid/view/View;

.field dF:Z

.field dG:Z

.field dH:Landroid/support/v4/app/k;

.field dI:Z

.field dJ:Z

.field dK:F

.field dL:Z

.field dM:Landroid/arch/lifecycle/l;

.field da:Landroid/os/Bundle;

.field db:Landroid/util/SparseArray;

.field dc:Ljava/lang/Boolean;

.field dd:Ljava/lang/String;

.field de:Landroid/os/Bundle;

.field df:Landroid/support/v4/app/Fragment;

.field dg:I

.field dh:I

.field di:Z

.field public dj:Z

.field dk:Z

.field dl:Z

.field dm:Z

.field dn:Z

.field do:I

.field dp:Landroid/support/v4/app/v;

.field dq:Landroid/support/v4/app/t;

.field dr:Landroid/support/v4/app/v;

.field ds:Landroid/support/v4/app/L;

.field dt:Landroid/support/v4/app/Fragment;

.field du:I

.field dv:I

.field dw:Ljava/lang/String;

.field dx:Z

.field dy:Z

.field dz:Z

.field mCalled:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mState:I

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/support/v4/c/u;

    invoke-direct {v0}, Landroid/support/v4/c/u;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->cY:Landroid/support/v4/c/u;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->cZ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->cx:I

    .line 118
    iput v0, p0, Landroid/support/v4/app/Fragment;->dg:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dC:Z

    .line 216
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dG:Z

    .line 245
    new-instance v0, Landroid/arch/lifecycle/l;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/l;-><init>(Landroid/arch/lifecycle/k;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    .line 334
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 360
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->cY:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 361
    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 364
    sget-object p0, Landroid/support/v4/app/Fragment;->cY:Landroid/support/v4/c/u;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 367
    if-eqz p2, :cond_4

    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 369
    iget v1, v0, Landroid/support/v4/app/Fragment;->cx:I

    if-ltz v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    invoke-virtual {p0}, Landroid/support/v4/app/v;->isStateSaved()Z

    move-result p0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already active and state has been saved"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->de:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_4
    return-object v0

    .line 387
    :catch_0
    move-exception p0

    .line 388
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 384
    :catch_1
    move-exception p0

    .line 385
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 380
    :catch_2
    move-exception p0

    .line 381
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 376
    :catch_3
    move-exception p0

    .line 377
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 372
    :catch_4
    move-exception p0

    .line 373
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 403
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->cY:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 404
    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 407
    sget-object p0, Landroid/support/v4/app/Fragment;->cY:Landroid/support/v4/c/u;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    const-class p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 410
    :catch_0
    move-exception p0

    .line 411
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->K()V

    return-void
.end method


# virtual methods
.method final B()Z
    .locals 1

    .line 438
    iget v0, p0, Landroid/support/v4/app/Fragment;->do:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Landroid/support/v4/app/n;
    .locals 1

    .line 630
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/n;

    return-object v0
.end method

.method public final D()V
    .locals 2

    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1301
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mActivity:Landroid/app/Activity;

    .line 1302
    :goto_0
    if-eqz v1, :cond_1

    .line 1303
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1304
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1306
    :cond_1
    return-void
.end method

.method public final E()Ljava/lang/Object;
    .locals 1

    .line 1880
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 1881
    const/4 v0, 0x0

    return-object v0

    .line 1883
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dU:Ljava/lang/Object;

    return-object v0
.end method

.method public final F()Ljava/lang/Object;
    .locals 2

    .line 1919
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 1920
    const/4 v0, 0x0

    return-object v0

    .line 1922
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dV:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cZ:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->E()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    .line 1923
    iget-object v0, v0, Landroid/support/v4/app/k;->dV:Ljava/lang/Object;

    return-object v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 1

    .line 1959
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 1960
    const/4 v0, 0x0

    return-object v0

    .line 1962
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dW:Ljava/lang/Object;

    return-object v0
.end method

.method public final H()Ljava/lang/Object;
    .locals 2

    .line 1997
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 1998
    const/4 v0, 0x0

    return-object v0

    .line 2000
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dX:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cZ:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->G()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    .line 2001
    iget-object v0, v0, Landroid/support/v4/app/k;->dX:Ljava/lang/Object;

    return-object v0
.end method

.method public final I()Ljava/lang/Object;
    .locals 1

    .line 2030
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2031
    const/4 v0, 0x0

    return-object v0

    .line 2033
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dY:Ljava/lang/Object;

    return-object v0
.end method

.method public final J()Ljava/lang/Object;
    .locals 2

    .line 2068
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2069
    const/4 v0, 0x0

    return-object v0

    .line 2071
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dZ:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cZ:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2072
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->I()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    .line 2073
    iget-object v0, v0, Landroid/support/v4/app/k;->dZ:Ljava/lang/Object;

    return-object v0
.end method

.method final K()V
    .locals 3

    .line 2190
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2191
    nop

    .line 2197
    move-object v0, v1

    goto :goto_0

    .line 2193
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/k;->ee:Z

    .line 2194
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->ef:Landroid/support/v4/app/l;

    .line 2195
    iget-object v2, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iput-object v1, v2, Landroid/support/v4/app/k;->ef:Landroid/support/v4/app/l;

    .line 2197
    :goto_0
    if-eqz v0, :cond_1

    .line 2198
    invoke-interface {v0}, Landroid/support/v4/app/l;->aa()V

    .line 2200
    :cond_1
    return-void
.end method

.method final L()V
    .locals 3

    .line 2298
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-eqz v0, :cond_0

    .line 2301
    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0}, Landroid/support/v4/app/v;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    .line 2302
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    new-instance v2, Landroid/support/v4/app/j;

    invoke-direct {v2, p0}, Landroid/support/v4/app/j;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/t;Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    .line 2322
    return-void

    .line 2299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final M()Landroid/view/View;
    .locals 1

    .line 2341
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 2344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dn:Z

    .line 2345
    const/4 v0, 0x0

    return-object v0
.end method

.method final N()V
    .locals 3

    .line 2365
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 2367
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 2369
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2371
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2372
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2376
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_1

    .line 2377
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchStart()V

    .line 2379
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->K:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2380
    return-void

    .line 2373
    :cond_2
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final O()V
    .locals 3

    .line 2383
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 2385
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 2387
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2389
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2390
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2394
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_1

    .line 2395
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchResume()V

    .line 2396
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 2398
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->L:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2399
    return-void

    .line 2391
    :cond_2
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final P()Landroid/support/v4/app/k;
    .locals 1

    .line 2633
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2634
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    .line 2636
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    return-object v0
.end method

.method final Q()I
    .locals 1

    .line 2640
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2641
    const/4 v0, 0x0

    return v0

    .line 2643
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget v0, v0, Landroid/support/v4/app/k;->dR:I

    return v0
.end method

.method final R()I
    .locals 1

    .line 2654
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2655
    const/4 v0, 0x0

    return v0

    .line 2657
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget v0, v0, Landroid/support/v4/app/k;->dS:I

    return v0
.end method

.method final S()I
    .locals 1

    .line 2670
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2671
    const/4 v0, 0x0

    return v0

    .line 2673
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget v0, v0, Landroid/support/v4/app/k;->dT:I

    return v0
.end method

.method final T()Landroid/support/v4/app/ax;
    .locals 1

    .line 2677
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2678
    const/4 v0, 0x0

    return-object v0

    .line 2680
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->ec:Landroid/support/v4/app/ax;

    return-object v0
.end method

.method final U()Landroid/support/v4/app/ax;
    .locals 1

    .line 2684
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2685
    const/4 v0, 0x0

    return-object v0

    .line 2687
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->ed:Landroid/support/v4/app/ax;

    return-object v0
.end method

.method final V()Landroid/view/View;
    .locals 1

    .line 2691
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2692
    const/4 v0, 0x0

    return-object v0

    .line 2694
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dO:Landroid/view/View;

    return-object v0
.end method

.method final W()Landroid/animation/Animator;
    .locals 1

    .line 2706
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2707
    const/4 v0, 0x0

    return-object v0

    .line 2709
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->dP:Landroid/animation/Animator;

    return-object v0
.end method

.method final X()I
    .locals 1

    .line 2713
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2714
    const/4 v0, 0x0

    return v0

    .line 2716
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget v0, v0, Landroid/support/v4/app/k;->dQ:I

    return v0
.end method

.method final Y()Z
    .locals 1

    .line 2724
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2725
    const/4 v0, 0x0

    return v0

    .line 2727
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-boolean v0, v0, Landroid/support/v4/app/k;->ee:Z

    return v0
.end method

.method final Z()Z
    .locals 1

    .line 2731
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 2732
    const/4 v0, 0x0

    return v0

    .line 2734
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-boolean v0, v0, Landroid/support/v4/app/k;->eg:Z

    return v0
.end method

.method final a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1228
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1229
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1230
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method final a(ILandroid/support/v4/app/Fragment;)V
    .locals 0

    .line 429
    iput p1, p0, Landroid/support/v4/app/Fragment;->cx:I

    .line 430
    if-eqz p2, :cond_0

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    return-void

    .line 433
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "android:fragment:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    .line 435
    return-void
.end method

.method final a(Landroid/animation/Animator;)V
    .locals 1

    .line 2702
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/k;->dP:Landroid/animation/Animator;

    .line 2703
    return-void
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 2

    .line 1437
    if-eqz p1, :cond_1

    .line 1438
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1440
    if-eqz p1, :cond_1

    .line 1441
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    .line 1442
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->L()V

    .line 1444
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->ds:Landroid/support/v4/app/L;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/v;->a(Landroid/os/Parcelable;Landroid/support/v4/app/L;)V

    .line 1445
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->ds:Landroid/support/v4/app/L;

    .line 1446
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/v;->dispatchCreate()V

    .line 1449
    :cond_1
    return-void
.end method

.method final b(Landroid/support/v4/app/l;)V
    .locals 2

    .line 2616
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    .line 2617
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->ef:Landroid/support/v4/app/l;

    if-ne p1, v0, :cond_0

    .line 2618
    return-void

    .line 2620
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->ef:Landroid/support/v4/app/l;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2621
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2624
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-boolean v0, v0, Landroid/support/v4/app/k;->ee:Z

    if-eqz v0, :cond_3

    .line 2625
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iput-object p1, v0, Landroid/support/v4/app/k;->ef:Landroid/support/v4/app/l;

    .line 2627
    :cond_3
    if-eqz p1, :cond_4

    .line 2628
    invoke-interface {p1}, Landroid/support/v4/app/l;->startListening()V

    .line 2630
    :cond_4
    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .line 2698
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/k;->dO:Landroid/view/View;

    .line 2699
    return-void
.end method

.method final c(II)V
    .locals 1

    .line 2661
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2662
    return-void

    .line 2664
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    .line 2665
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iput p1, v0, Landroid/support/v4/app/k;->dS:I

    .line 2666
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iput p2, p1, Landroid/support/v4/app/k;->dT:I

    .line 2667
    return-void
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 2

    .line 2325
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 2328
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2329
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2330
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2331
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dL:Z

    .line 2332
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_1

    .line 2336
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->J:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2337
    return-void

    .line 2333
    :cond_1
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d(Landroid/os/Bundle;)V
    .locals 2

    .line 2349
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 2352
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2354
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2355
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_2

    .line 2359
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz p1, :cond_1

    .line 2360
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/v;->dispatchActivityCreated()V

    .line 2362
    :cond_1
    return-void

    .line 2356
    :cond_2
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d(Z)V
    .locals 1

    .line 2738
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/k;->eg:Z

    .line 2739
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget v0, p0, Landroid/support/v4/app/Fragment;->du:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget v0, p0, Landroid/support/v4/app/Fragment;->dv:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2218
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2219
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->do:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->di:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2222
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dj:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2223
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dk:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2224
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dl:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2225
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dx:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2226
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dy:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2227
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dC:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2228
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dB:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2229
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dz:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2230
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dA:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2231
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dG:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2232
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2236
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-eqz v0, :cond_1

    .line 2237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2240
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 2241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2244
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->de:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->de:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2247
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2251
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2255
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 2256
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2257
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    iget v0, p0, Landroid/support/v4/app/Fragment;->dh:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2260
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Q()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2261
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Q()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2263
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2264
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2266
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2269
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2270
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2272
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->X()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2280
    :cond_b
    invoke-static {p0}, Landroid/support/v4/app/ag;->c(Landroid/arch/lifecycle/k;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/app/ag;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2281
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_c

    .line 2282
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/v;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2285
    :cond_c
    return-void
.end method

.method final e(Landroid/os/Bundle;)V
    .locals 2

    .line 2514
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2515
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_0

    .line 2518
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2521
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 445
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 603
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 452
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final i(I)V
    .locals 1

    .line 2647
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2648
    return-void

    .line 2650
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/k;->dR:I

    .line 2651
    return-void
.end method

.method final j(I)V
    .locals 1

    .line 2720
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()Landroid/support/v4/app/k;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/k;->dQ:I

    .line 2721
    return-void
.end method

.method public final o()Landroid/arch/lifecycle/E;
    .locals 2

    .line 255
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/arch/lifecycle/E;

    invoke-direct {v0}, Landroid/arch/lifecycle/E;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    return-object v0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1515
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1516
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1055
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1338
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1339
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->mActivity:Landroid/app/Activity;

    .line 1340
    :goto_0
    if-eqz v0, :cond_1

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1342
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1344
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1599
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1600
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1417
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 1418
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    .line 1419
    iget p1, p1, Landroid/support/v4/app/v;->eG:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1420
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/v;->dispatchCreate()V

    .line 1422
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1784
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->C()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/n;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1785
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    iget-boolean v0, v0, Landroid/support/v4/app/v;->eM:Z

    if-nez v0, :cond_0

    .line 1651
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    invoke-virtual {v0}, Landroid/arch/lifecycle/E;->clear()V

    .line 1653
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1640
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1688
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    .line 1197
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p1}, Landroid/support/v4/app/t;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->L()V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchResume()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchStart()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchActivityCreated()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->dispatchCreate()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    instance-of v2, v1, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/view/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1626
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1552
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1553
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1575
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1542
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1620
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 1012
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1013
    return-void

    .line 1012
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fragment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 458
    invoke-static {p0, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 459
    iget v1, p0, Landroid/support/v4/app/Fragment;->cx:I

    if-ltz v1, :cond_0

    .line 460
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v1, p0, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->du:I

    if-eqz v1, :cond_1

    .line 464
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget v1, p0, Landroid/support/v4/app/Fragment;->du:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 468
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
