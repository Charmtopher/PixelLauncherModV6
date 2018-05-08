.class public final synthetic Lcom/android/launcher3/-$$Lambda$Launcher$oNLV8DXw19UoeUsA79iVX3UfK2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$Launcher$oNLV8DXw19UoeUsA79iVX3UfK2k;->f$0:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$Launcher$oNLV8DXw19UoeUsA79iVX3UfK2k;->f$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$new$0(Lcom/android/launcher3/Launcher;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
